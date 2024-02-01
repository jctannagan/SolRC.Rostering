// my-service.service.ts
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ScheduleApiService {

  constructor(private http: HttpClient) { }

  public generateSchedule(): Observable<any> {
    // Your logic here
    // console.log('Service method called');
    //return this.http.get('/api/test');
    return this.http.get('/api/schedule/download');
  }
}
