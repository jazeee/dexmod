.class public Lcom/dexcom/cgm/model/Follower;
.super Ljava/lang/Object;
.source "Follower.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_contactID:Ljava/util/UUID;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "contact_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_email:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "email"
    .end annotation
.end field

.field private m_hasTrendPermission:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "has_trend_permission"
    .end annotation
.end field

.field private m_highDelay:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "high_delay"
    .end annotation
.end field

.field private m_highEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "high_enabled"
    .end annotation
.end field

.field private m_highThreshold:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "high_threshold"
    .end annotation
.end field

.field private m_lowDelay:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "low_delay"
    .end annotation
.end field

.field private m_lowEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "low_enabled"
    .end annotation
.end field

.field private m_lowThreshold:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "low_threshold"
    .end annotation
.end field

.field private m_name:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "name"
    .end annotation
.end field

.field private m_noDataDelay:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "nodata_delay"
    .end annotation
.end field

.field private m_noDataEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "nodata_enabled"
    .end annotation
.end field

.field private m_state:Lcom/dexcom/cgm/model/enums/FollowerState;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "state"
    .end annotation
.end field

.field private m_subscriptionID:Ljava/util/UUID;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "subscription_id"
    .end annotation
.end field

.field private m_urgentLowEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "urgentlow_enabled"
    .end annotation
.end field

.field private m_urgentLowThreshold:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "urgentlow_threshold"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/Follower$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dexcom/cgm/model/Follower;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/dexcom/cgm/model/Follower;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/Follower;->m_noDataEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/model/Follower;Ljava/util/UUID;)Ljava/util/UUID;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/model/Follower;->m_contactID:Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_urgentLowThreshold:I

    return p1
.end method

.method static synthetic access$1202(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_lowThreshold:I

    return p1
.end method

.method static synthetic access$1302(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_highThreshold:I

    return p1
.end method

.method static synthetic access$1402(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_lowDelay:I

    return p1
.end method

.method static synthetic access$1502(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_highDelay:I

    return p1
.end method

.method static synthetic access$1602(Lcom/dexcom/cgm/model/Follower;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/dexcom/cgm/model/Follower;->m_noDataDelay:I

    return p1
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/model/Follower;Ljava/util/UUID;)Ljava/util/UUID;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/model/Follower;->m_subscriptionID:Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/model/Follower;->m_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/model/Follower;->m_email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/dexcom/cgm/model/Follower;Lcom/dexcom/cgm/model/enums/FollowerState;)Lcom/dexcom/cgm/model/enums/FollowerState;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/model/Follower;->m_state:Lcom/dexcom/cgm/model/enums/FollowerState;

    return-object p1
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/model/Follower;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/Follower;->m_hasTrendPermission:Z

    return p1
.end method

.method static synthetic access$702(Lcom/dexcom/cgm/model/Follower;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/Follower;->m_urgentLowEnabled:Z

    return p1
.end method

.method static synthetic access$802(Lcom/dexcom/cgm/model/Follower;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/Follower;->m_lowEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/dexcom/cgm/model/Follower;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/Follower;->m_highEnabled:Z

    return p1
.end method


# virtual methods
.method public getContactID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower;->m_contactID:Ljava/util/UUID;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower;->m_email:Ljava/lang/String;

    return-object v0
.end method

.method public getHighDelay()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_highDelay:I

    return v0
.end method

.method public getHighThreshold()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_highThreshold:I

    return v0
.end method

.method public getLowDelay()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_lowDelay:I

    return v0
.end method

.method public getLowThreshold()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_lowThreshold:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoDataDelay()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_noDataDelay:I

    return v0
.end method

.method public getState()Lcom/dexcom/cgm/model/enums/FollowerState;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower;->m_state:Lcom/dexcom/cgm/model/enums/FollowerState;

    return-object v0
.end method

.method public getSubscriptionID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower;->m_subscriptionID:Ljava/util/UUID;

    return-object v0
.end method

.method public getUrgentLowThreshold()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/dexcom/cgm/model/Follower;->m_urgentLowThreshold:I

    return v0
.end method

.method public hasTrendPermission()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Follower;->m_hasTrendPermission:Z

    return v0
.end method

.method public isHighEnabled()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Follower;->m_highEnabled:Z

    return v0
.end method

.method public isLowEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Follower;->m_lowEnabled:Z

    return v0
.end method

.method public isNoDataEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Follower;->m_noDataEnabled:Z

    return v0
.end method

.method public isUrgentLowEnabled()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Follower;->m_urgentLowEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
