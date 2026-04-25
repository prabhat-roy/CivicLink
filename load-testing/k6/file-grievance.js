import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  vus: 50,
  duration: '5m',
  thresholds: { http_req_duration: ['p(95)<2000'] },
};

const TOKEN = __ENV.CITIZEN_TOKEN;

export default function () {
  const payload = JSON.stringify({ category: 'property-tax', description: 'load-test grievance' });
  const headers = { 'Content-Type': 'application/json', Authorization: `Bearer ${TOKEN}` };
  const res = http.post('https://api.civiclink.gov/v1/grievance', payload, { headers });
  check(res, { 'status is 201': r => r.status === 201 });
  sleep(2);
}
