import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";

@Injectable({
    providedIn: 'root',
})
export class ScheduleApiService {
    constructor(private http: HttpClient) {}

    generateSchedule(): Observable<any> {
        return this.http.get('/api/schedule/download', {responseType: 'blob'});
    }
}
