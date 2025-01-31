#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "app.h"
#include "sl_sleeptimer.h"
#include "sl_i2cspm_instances.h"
#include "mlx90640/mlx90640.h"
#include "mlx90640/mlx90640_i2c.h"

#define MLX90640_EMISSIVITY 0.95
#define MLX90640_TA_SHIFT 8
#define TIMER_INTERVAL_MS 250  // Interval for timer synchronization
#define RUN_TIME_MS 5000       // Total run time (5 seconds)

int iteration_count = 0;  // Counts timer executions
int MAX_ITERATIONS = (RUN_TIME_MS / TIMER_INTERVAL_MS);  // 20 iterations
sl_sleeptimer_timer_handle_t mlx90640_timer;  // Timer handle

static paramsMLX90640 mlxParams; //MLX90640 calibration
uint16_t frameData[834];  // Raw sensor frame data
uint16_t eeData[832];     // EEPROM data buffer

void read_raw_ir_data()
{
    sl_status_t status;
    status = mlx90640_GetFrameData(frameData);
    while (status != SL_STATUS_OK) {
        status = mlx90640_GetFrameData(frameData);
    }
    for (int i = 0; i < 834; i++) {
//        if (i % 16 == 0) {
//            printf("\r\nPixel %d: ", i);
//        }
        printf("0x%04X, ", frameData[i]);
    }
    printf("\r\n\n---\n");

    // Extract VDD and Ta (ambient temperature) as raw values
    float vdd, ta;
    mlx90640_GetVdd(frameData, &mlxParams, &vdd);
    mlx90640_GetTa(frameData, &mlxParams, &ta);

    printf("\r\n\nRaw VDD: %u (hex: 0x%04X), Raw Ta: %u (hex: 0x%04X)\n",
            (uint16_t)vdd, (uint16_t)vdd, (uint16_t)ta, (uint16_t)ta);
}

void mlx90640_timer_callback(sl_sleeptimer_timer_handle_t *handle, void *data)
{
    (void)handle;
    (void)data;

    if (iteration_count < MAX_ITERATIONS) {
        read_raw_ir_data();  // Call function every 250ms
        iteration_count++;
        // Restart timer for the next cycle
        sl_sleeptimer_start_timer_ms(&mlx90640_timer, TIMER_INTERVAL_MS, mlx90640_timer_callback, NULL, 0, 0);
    } else {
        printf("\n=== Stopping MLX90640 Readings After 5 Seconds ===\n");
        sl_sleeptimer_stop_timer(&mlx90640_timer);  // Stop after 5 seconds
    }
}

SL_WEAK void app_init(void)
{
    printf("\n=== MLX90640(RAw Pixels Data) Application Started ===\n");
    while (mlx90640_init(sl_i2cspm_sensor) != SL_STATUS_OK) {
        mlx90640_init(sl_i2cspm_sensor);
    }
    mlx90640_SetRefreshRate(0x06); //Refresh Rate (0x06 = 4Hz)
    mlx90640_I2CGeneralReset();
    sl_sleeptimer_delay_millisecond(10);

    sl_sleeptimer_start_timer_ms(&mlx90640_timer, TIMER_INTERVAL_MS, mlx90640_timer_callback, NULL, 0, 0);
}

SL_WEAK void app_process_action(void)
{



}
