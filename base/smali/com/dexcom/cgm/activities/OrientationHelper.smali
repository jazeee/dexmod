.class public Lcom/dexcom/cgm/activities/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field private static currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

.field private static listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/activities/OrientationHelper$OnOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static s_orientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;->Portrait:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;)Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/dexcom/cgm/activities/OrientationHelper;->processAllOrientationListeners()V

    return-void
.end method

.method public static addOnOrientationChangedListener(Lcom/dexcom/cgm/activities/OrientationHelper$OnOrientationChangedListener;)V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public static getOrientation()Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    return-object v0
.end method

.method private static initializeEventListenerIfNeeded()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/dexcom/cgm/activities/OrientationHelper$1;

    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/OrientationHelper$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->s_orientationEventListener:Landroid/view/OrientationEventListener;

    .line 119
    return-void
.end method

.method private static processAllOrientationListeners()V
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/OrientationHelper$OnOrientationChangedListener;

    .line 147
    sget-object v2, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/OrientationHelper$OnOrientationChangedListener;->onOrientationChanged(Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public static setMockOrientation(Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lcom/dexcom/cgm/activities/OrientationHelper;->currentOrientation:Lcom/dexcom/cgm/activities/OrientationHelper$Orientation;

    .line 128
    invoke-static {}, Lcom/dexcom/cgm/activities/OrientationHelper;->processAllOrientationListeners()V

    .line 129
    return-void
.end method

.method public static startMonitoring()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/dexcom/cgm/activities/OrientationHelper;->initializeEventListenerIfNeeded()V

    .line 52
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->s_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 53
    return-void
.end method

.method public static stopMonitoring()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->s_orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/OrientationHelper;->s_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method
