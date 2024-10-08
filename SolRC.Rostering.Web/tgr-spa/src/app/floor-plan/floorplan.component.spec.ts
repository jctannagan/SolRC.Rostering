import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FloorPlanComponent } from './floorplan.component';

describe('TypographyComponent', () => {
  let component: FloorPlanComponent;
  let fixture: ComponentFixture<FloorPlanComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FloorPlanComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FloorPlanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
