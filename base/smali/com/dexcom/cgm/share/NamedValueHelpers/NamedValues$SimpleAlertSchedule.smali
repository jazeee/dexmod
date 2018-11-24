.class Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;
.super Ljava/lang/Object;
.source "NamedValues.java"


# instance fields
.field private alertScheduleEnabled:Z

.field private alertScheduleIndex:I

.field private alwaysSoundEnabled:Z

.field private endTime:J

.field private fridayEnabled:Z

.field private mondayEnabled:Z

.field private saturdayEnabled:Z

.field private scheduleName:Ljava/lang/String;

.field private startTime:J

.field private sundayEnabled:Z

.field private thursdayEnabled:Z

.field private tuesdayEnabled:Z

.field private wednesdayEnabled:Z


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->scheduleName:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getAlertScheduleIndex()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alertScheduleIndex:I

    .line 258
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlertScheduleEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alertScheduleEnabled:Z

    .line 259
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alwaysSoundEnabled:Z

    .line 260
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->startTime:J

    .line 261
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->endTime:J

    .line 263
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->mondayEnabled:Z

    .line 264
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->tuesdayEnabled:Z

    .line 265
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->wednesdayEnabled:Z

    .line 266
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->thursdayEnabled:Z

    .line 267
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->fridayEnabled:Z

    .line 268
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->saturdayEnabled:Z

    .line 269
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->sundayEnabled:Z

    .line 270
    return-void
.end method


# virtual methods
.method public getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 19

    .prologue
    .line 274
    new-instance v3, Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alertScheduleIndex:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alertScheduleEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->alwaysSoundEnabled:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->scheduleName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->startTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->endTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->mondayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->tuesdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->wednesdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->thursdayEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->fridayEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->saturdayEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->sundayEnabled:Z

    move/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/dexcom/cgm/model/DexAlertSchedule;-><init>(IZZLjava/lang/String;JJZZZZZZZ)V

    return-object v3
.end method
