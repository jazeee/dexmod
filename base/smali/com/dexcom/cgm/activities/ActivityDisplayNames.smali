.class public Lcom/dexcom/cgm/activities/ActivityDisplayNames;
.super Ljava/lang/Object;
.source "ActivityDisplayNames.java"


# static fields
.field static m_classToDisplayNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->initialize()V

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    sget-object v0, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    :cond_1
    return-object v0
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    sput-object v0, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    const-string v2, "TrendScreen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    const-class v1, Lcom/dexcom/cgm/activities/AccountEditActivity;

    const-string v2, "AccountEdit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->m_classToDisplayNameMap:Ljava/util/Map;

    const-class v1, Lcom/dexcom/cgm/activities/ChangePasswordActivity;

    const-string v2, "ChangePassword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
