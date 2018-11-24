.class public Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
.super Ljava/lang/Object;
.source "DexAlertSchedule.java"


# instance fields
.field private m_alertScheduleEnabled:Z

.field private m_alertScheduleIndex:I

.field private m_alwaysSoundEnabled:Z

.field private m_endTime:J

.field private m_fridayEnabled:Z

.field private m_mondayEnabled:Z

.field private m_saturdayEnabled:Z

.field private m_scheduleName:Ljava/lang/String;

.field private m_startTime:J

.field private m_sundayEnabled:Z

.field private m_thursdayEnabled:Z

.field private m_tuesdayEnabled:Z

.field private m_wednesdayEnabled:Z


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setScheduleName(Ljava/lang/String;)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 293
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getAlertScheduleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 294
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlertScheduleEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlertScheduleEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 295
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlwaysSoundEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 296
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 297
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setEndTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 298
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setMondayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 299
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setTuesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 300
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setWednesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 301
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setThursdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 302
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setFridayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 303
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSaturdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 304
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSundayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 305
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 19

    .prologue
    .line 387
    new-instance v3, Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alertScheduleIndex:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alertScheduleEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alwaysSoundEnabled:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_scheduleName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_startTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_endTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_mondayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_tuesdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_wednesdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_thursdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_fridayEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_saturdayEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_sundayEnabled:Z

    move/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/dexcom/cgm/model/DexAlertSchedule;-><init>(IZZLjava/lang/String;JJZZZZZZZ)V

    return-object v3
.end method

.method public setAlertScheduleEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alertScheduleEnabled:Z

    .line 328
    return-object p0
.end method

.method public setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 315
    iput p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alertScheduleIndex:I

    .line 316
    return-object p0
.end method

.method public setAlwaysSoundEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_alwaysSoundEnabled:Z

    .line 322
    return-object p0
.end method

.method public setEndTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 1

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_endTime:J

    .line 340
    return-object p0
.end method

.method public setFridayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_fridayEnabled:Z

    .line 370
    return-object p0
.end method

.method public setMondayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_mondayEnabled:Z

    .line 346
    return-object p0
.end method

.method public setSaturdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_saturdayEnabled:Z

    .line 376
    return-object p0
.end method

.method public setScheduleName(Ljava/lang/String;)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_scheduleName:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 1

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_startTime:J

    .line 334
    return-object p0
.end method

.method public setSundayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_sundayEnabled:Z

    .line 382
    return-object p0
.end method

.method public setThursdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_thursdayEnabled:Z

    .line 364
    return-object p0
.end method

.method public setTuesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_tuesdayEnabled:Z

    .line 352
    return-object p0
.end method

.method public setWednesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;
    .locals 0

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->m_wednesdayEnabled:Z

    .line 358
    return-object p0
.end method
