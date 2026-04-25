import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  timeout: 60_000,
  retries: 2,
  reporter: [['list'], ['html', { open: 'never' }]],
  use: {
    baseURL: process.env.BASE_URL ?? 'https://staging.civiclink.gov',
    trace: 'on-first-retry',
    screenshot: 'only-on-failure',
  },
  projects: [
    { name: 'smoke',     use: { ...devices['Desktop Chrome'] } },
    { name: 'firefox',   use: { ...devices['Desktop Firefox'] } },
    { name: 'webkit',    use: { ...devices['Desktop Safari'] } },
    { name: 'mobile',    use: { ...devices['Pixel 7'] } },
  ],
});
