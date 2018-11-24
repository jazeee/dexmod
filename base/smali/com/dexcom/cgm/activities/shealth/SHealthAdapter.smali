.class public Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;
.super Ljava/lang/Object;
.source "SHealthAdapter.java"


# static fields
.field private static final IS_TEST_ENABLED:Z

.field private static final m_permissionKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            ">;"
        }
    .end annotation
.end field

.field private static s_keysAdded:Z


# instance fields
.field private CHECKING_PERMISSIONS:Z

.field private CONNECTING_FOR_READ_WRITE:Z

.field private REQUESTING_PERMISSIONS:Z

.field public dataStore:Lcom/samsung/android/sdk/healthdata/w;

.field private healthDataService:Lcom/samsung/android/sdk/healthdata/v;

.field private final mConnectionListener:Lcom/samsung/android/sdk/healthdata/z;

.field private final mPermissionListener:Lcom/samsung/android/sdk/healthdata/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_activity:Landroid/app/Activity;

.field private m_checkCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

.field private m_pmsManager:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

.field private m_requestCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

.field private resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_permissionKeySet:Ljava/util/Set;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->s_keysAdded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/sdk/healthdata/v;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/v;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->healthDataService:Lcom/samsung/android/sdk/healthdata/v;

    .line 38
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->REQUESTING_PERMISSIONS:Z

    .line 39
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CHECKING_PERMISSIONS:Z

    .line 40
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CONNECTING_FOR_READ_WRITE:Z

    .line 130
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$1;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/z;

    .line 243
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$2;-><init>(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->mPermissionListener:Lcom/samsung/android/sdk/healthdata/aj;

    .line 47
    sget-boolean v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->s_keysAdded:Z

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_permissionKeySet:Ljava/util/Set;

    new-instance v1, Lcom/samsung/android/sdk/healthdata/af;

    const-string v2, "com.samsung.health.blood_glucose"

    sget-object v3, Lcom/samsung/android/sdk/healthdata/ah;->WRITE:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/af;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/ah;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->s_keysAdded:Z

    .line 61
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/healthdata/w;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/z;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/healthdata/w;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/healthdata/z;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;-><init>(Lcom/samsung/android/sdk/healthdata/w;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    .line 63
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;-><init>(Lcom/samsung/android/sdk/healthdata/w;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_pmsManager:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->healthDataService:Lcom/samsung/android/sdk/healthdata/v;

    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/v;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "S Health"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " S Health  data service initialization error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CHECKING_PERMISSIONS:Z

    return v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CHECKING_PERMISSIONS:Z

    return p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CONNECTING_FOR_READ_WRITE:Z

    return v0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_permissionKeySet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_pmsManager:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_checkCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/samsung/android/sdk/healthdata/aj;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->mPermissionListener:Lcom/samsung/android/sdk/healthdata/aj;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->REQUESTING_PERMISSIONS:Z

    return v0
.end method

.method static synthetic access$702(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->REQUESTING_PERMISSIONS:Z

    return p1
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;)Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_requestCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    return-object v0
.end method

.method private connectDataStore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/w;->connectService()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const-class v1, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "S-Health Connection failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/z;

    new-instance v1, Lcom/samsung/android/sdk/healthdata/a;

    invoke-direct {v1, v4, v4}, Lcom/samsung/android/sdk/healthdata/a;-><init>(IZ)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/z;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    goto :goto_0
.end method


# virtual methods
.method public checkPermissions(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_checkCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CHECKING_PERMISSIONS:Z

    .line 92
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->connectDataStore()V

    .line 93
    return-void
.end method

.method public connectForReadOrWrite(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->CONNECTING_FOR_READ_WRITE:Z

    .line 105
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_checkCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    .line 106
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->connectDataStore()V

    .line 107
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->dataStore:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/w;->disconnectService()V

    .line 124
    return-void
.end method

.method public getResolver()Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->resolver:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    return-object v0
.end method

.method public requestPermissions(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 97
    iput-object p2, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_activity:Landroid/app/Activity;

    .line 98
    iput-object p1, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->m_requestCallback:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->REQUESTING_PERMISSIONS:Z

    .line 100
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->connectDataStore()V

    .line 101
    return-void
.end method
