.class public Lcom/dexcom/cgm/i/a/c;
.super Ljava/lang/Object;
.source "DexUserAlertProperties.java"


# instance fields
.field m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 130
    invoke-static {p1}, Lcom/dexcom/cgm/i/a/b;->access$000(Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    iput-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 132
    return-void
.end method


# virtual methods
.method public final build()Lcom/dexcom/cgm/i/a/b;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/dexcom/cgm/i/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/i/a/b;-><init>(Lcom/dexcom/cgm/i/a/a;)V

    .line 178
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/i/a/b;->access$002(Lcom/dexcom/cgm/i/a/b;Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 179
    return-object v0
.end method

.method public final setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 173
    return-object p0
.end method

.method public final setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 161
    return-object p0
.end method

.method public final setAlertType(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/c;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 155
    return-object p0
.end method

.method public final setIsDaytimeAlert(Z)Lcom/dexcom/cgm/i/a/c;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 167
    return-object p0
.end method

.method public final setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 137
    return-object p0
.end method

.method public final setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/i/a/c;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 143
    return-object p0
.end method

.method public final setThreshold(I)Lcom/dexcom/cgm/i/a/c;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/c;->m_internalBuilder:Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    .line 149
    return-object p0
.end method
