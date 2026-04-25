import { test, expect } from '@playwright/test';

test('citizen can sign in and view their dashboard', async ({ page }) => {
  await page.goto('/');
  await page.getByRole('button', { name: /sign in/i }).click();
  await page.getByLabel('National ID').fill(process.env.TEST_NID ?? 'TEST-0001');
  await page.getByLabel('OTP').fill(process.env.TEST_OTP ?? '000000');
  await page.getByRole('button', { name: /verify/i }).click();
  await expect(page.getByRole('heading', { name: /my services/i })).toBeVisible();
});

test('citizen can file a grievance', async ({ page }) => {
  await page.goto('/grievance/new');
  await page.getByLabel('Category').selectOption('property-tax');
  await page.getByLabel('Description').fill('Property tax assessment is incorrect for parcel 12-34-56.');
  await page.getByRole('button', { name: /submit/i }).click();
  await expect(page.getByText(/grievance id:/i)).toBeVisible();
});
