import http from 'k6/http';
import { sleep, check } from 'k6';

export const options = {
  stages: [
    { duration: '1m',  target: 50 },
    { duration: '5m',  target: 200 },
    { duration: '10m', target: 500 },
    { duration: '2m',  target: 0 },
  ],
  thresholds: {
    http_req_duration: ['p(95)<500', 'p(99)<1500'],
    http_req_failed:   ['rate<0.01'],
  },
};

export default function () {
  const res = http.get('https://api.civiclink.gov/v1/services/catalogue');
  check(res, { 'status is 200': r => r.status === 200 });
  sleep(1);
}
