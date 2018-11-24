.class public Lcom/dexcom/cgm/test/api/model/AlertData;
.super Ljava/lang/Object;
.source "AlertData.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field private m_isRepeatTimeSet:Z

.field private m_newValue:I

.field private m_repeatTimeMinutes:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_repeatTimeMinutes:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_isRepeatTimeSet:Z

    .line 21
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 22
    iput p2, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_newValue:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;III)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_repeatTimeMinutes:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_isRepeatTimeSet:Z

    .line 27
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 28
    iput p3, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_newValue:I

    .line 29
    iput p2, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_alertScheduleIndex:I

    .line 30
    iput p4, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_repeatTimeMinutes:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_isRepeatTimeSet:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getAlertScheduleIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_alertScheduleIndex:I

    return v0
.end method

.method public getAlertType()Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    return-object v0
.end method

.method public getNewValue()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_newValue:I

    return v0
.end method

.method public getRepeatTimeMinutes()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_repeatTimeMinutes:I

    return v0
.end method

.method public isRepeatTimeSet()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/AlertData;->m_isRepeatTimeSet:Z

    return v0
.end method
