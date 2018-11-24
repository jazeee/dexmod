.class final Lcom/dexcom/cgm/a/a;
.super Ljava/lang/Object;
.source "AlertCollection.java"


# static fields
.field private static b:Lcom/dexcom/cgm/model/enums/AlertSound;


# instance fields
.field private a:[Lcom/dexcom/cgm/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->ShortBeeps:Lcom/dexcom/cgm/model/enums/AlertSound;

    sput-object v0, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    return-void
.end method

.method constructor <init>(Lcom/dexcom/cgm/model/AlertSettings;)V
    .locals 11

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/dexcom/cgm/a/c;

    iput-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    .line 1044
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 1276
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    const/4 v3, 0x1

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/16 v7, 0x1e

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->d:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLowAlarm:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1044
    aput-object v0, v9, v10

    .line 1045
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 1304
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->f:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->LowAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1045
    aput-object v0, v9, v10

    .line 1046
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 1318
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->g:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->HighAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1046
    aput-object v0, v9, v10

    .line 1047
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1048
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 1430
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->o:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1048
    aput-object v0, v9, v10

    .line 1049
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 2262
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    const/4 v3, 0x1

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->c:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1049
    aput-object v0, v9, v10

    .line 1050
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 3248
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x0

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->b:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1050
    aput-object v0, v9, v10

    .line 1051
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 4234
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    const/4 v3, 0x1

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->a:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1051
    aput-object v0, v9, v10

    .line 1052
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 4290
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    const/4 v3, 0x1

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->e:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1052
    aput-object v0, v9, v10

    .line 1053
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1055
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 4374
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->k:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1055
    aput-object v0, v9, v10

    .line 1056
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 5332
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    sget-object v6, Lcom/dexcom/cgm/a/b;->h:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1056
    aput-object v0, v9, v10

    .line 1057
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 5346
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x0

    sget-object v6, Lcom/dexcom/cgm/a/b;->i:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1057
    aput-object v0, v9, v10

    .line 1058
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 5360
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->j:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1058
    aput-object v0, v9, v10

    .line 1059
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 5402
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->m:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1059
    aput-object v0, v9, v10

    .line 1060
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6388
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->l:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1060
    aput-object v0, v9, v10

    .line 1061
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1063
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6416
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    const/16 v4, 0x14

    .line 6420
    invoke-static {v4}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v4

    const/4 v5, 0x6

    sget-object v6, Lcom/dexcom/cgm/a/b;->n:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->SignalLossAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1063
    aput-object v0, v9, v10

    .line 1064
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6444
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->p:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->RiseRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1064
    aput-object v0, v9, v10

    .line 1065
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1067
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1068
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1070
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6458
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->q:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->FallRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1070
    aput-object v0, v9, v10

    .line 1071
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 1072
    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1073
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationValueEntered:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationValueEntered:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1075
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6472
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    new-instance v4, Lcom/dexcom/cgm/k/k;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->r:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1075
    aput-object v0, v9, v10

    .line 1076
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 6529
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->v:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1076
    aput-object v0, v9, v10

    .line 1077
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 1078
    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1079
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 7486
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->s:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1079
    aput-object v0, v9, v10

    .line 1080
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 7500
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->t:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1080
    aput-object v0, v9, v10

    .line 1081
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 7513
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->u:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1081
    aput-object v0, v9, v10

    .line 1082
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 7543
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->C:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x0

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1082
    aput-object v0, v9, v10

    .line 1083
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 7557
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->w:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1083
    aput-object v0, v9, v10

    .line 1084
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 8206
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->z:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1084
    aput-object v0, v9, v10

    .line 1085
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 9192
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->y:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1085
    aput-object v0, v9, v10

    .line 1086
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 10164
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->x:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1086
    aput-object v0, v9, v10

    .line 1087
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1089
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1091
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1093
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 11150
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->A:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1093
    aput-object v0, v9, v10

    .line 1094
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1096
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 11178
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->D:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1097
    aput-object v0, v9, v10

    .line 1098
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 1099
    invoke-static {v2}, Lcom/dexcom/cgm/a/a;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1100
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 12136
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->B:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1101
    aput-object v0, v9, v10

    .line 1102
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 13108
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    const/4 v5, 0x2

    sget-object v6, Lcom/dexcom/cgm/a/b;->C:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1102
    aput-object v0, v9, v10

    .line 1103
    iget-object v9, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v10

    .line 13122
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    sget v2, Lcom/dexcom/cgm/a/d;->None$6b2c33b7:I

    const/4 v3, 0x0

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->C:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x1

    sget-object v8, Lcom/dexcom/cgm/a/a;->b:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 1103
    aput-object v0, v9, v10

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/AlertSettings;->getAllUserAlertProperties()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 32
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private static b(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;
    .locals 9

    .prologue
    .line 220
    new-instance v0, Lcom/dexcom/cgm/a/c;

    sget v2, Lcom/dexcom/cgm/a/d;->None$6b2c33b7:I

    const/4 v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sget v5, Lcom/dexcom/cgm/a/c;->MaxRealerts:I

    sget-object v6, Lcom/dexcom/cgm/a/b;->C:[Lcom/dexcom/cgm/model/enums/AlertKind;

    const/4 v7, 0x0

    sget-object v8, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/a/c;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;IZLcom/dexcom/cgm/k/k;I[Lcom/dexcom/cgm/model/enums/AlertKind;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 229
    return-object v0
.end method


# virtual methods
.method final a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method final a(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/a/c;->setSuspensionPeriod(Lcom/dexcom/cgm/k/k;)V

    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/a/a;->a:[Lcom/dexcom/cgm/a/c;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/a/c;->setSound(Lcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 40
    return-void
.end method
