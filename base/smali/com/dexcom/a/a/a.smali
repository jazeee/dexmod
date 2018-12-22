.class public Lcom/dexcom/a/a/a;
.super Ljava/lang/Object;
.source "DexTimeFormatter.java"


# static fields
.field private static final NULL_GUID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"


# instance fields
.field private m_disableAppCompatibility:Z

.field private m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

.field private m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

.field private m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 1

    .prologue
    .line 3030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/a/a/a;->m_disableAppCompatibility:Z

    .line 3031
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;-><init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V

    iput-object v0, p0, Lcom/dexcom/a/a/a;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    .line 3032
    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 5111
    invoke-static {}, Lcom/dexcom/a/a/a;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5112
    int-to-float v1, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 7108
    .line 7110
    :goto_0
    if-eqz p0, :cond_0

    .line 7112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 7114
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 7118
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6106
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6107
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6108
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 6109
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Array contains unsupported objects. JSONArray param must contain JSON object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6111
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6113
    :cond_1
    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6086
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6087
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 6088
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6089
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6090
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6091
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "JSONObject contains unsupported type for key in the map."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6094
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 6095
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 6096
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 6097
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "JSONObject contains unsupported type for value in the map."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6099
    :cond_1
    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6101
    :cond_2
    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 6059
    if-nez p0, :cond_0

    .line 6060
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6063
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6064
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 6051
    if-nez p0, :cond_0

    .line 6052
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6055
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6056
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 6067
    if-nez p0, :cond_0

    .line 6068
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6071
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6072
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 6020
    if-nez p0, :cond_0

    .line 6021
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6023
    :cond_0
    if-nez p2, :cond_1

    .line 6024
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6028
    :goto_0
    return-void

    .line 6026
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6031
    if-nez p0, :cond_0

    .line 6032
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6035
    :cond_0
    if-eqz p2, :cond_1

    .line 6036
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6040
    :goto_0
    return-void

    .line 6038
    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 6043
    if-nez p0, :cond_0

    .line 6044
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null Json object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6047
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6048
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 5029
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5030
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 2

    .prologue
    .line 5119
    invoke-static {}, Lcom/dexcom/a/a/a;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5120
    int-to-float v1, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static b()Landroid/graphics/Point;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5036
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 5037
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5038
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 5041
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 5042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 5043
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5059
    :goto_0
    return-object v2

    .line 5044
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    .line 5046
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v3, "getRawHeight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5047
    const-class v0, Landroid/view/Display;

    const-string v4, "getRawWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5048
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 5049
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5051
    :catch_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 5053
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_2

    .line 5054
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 5056
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 5057
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6119
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6120
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 6121
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Array contains unsupported objects. JSONArray param must contain String object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6123
    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6125
    :cond_1
    return-object v2
.end method

.method public static c()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 5064
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 5065
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5066
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5068
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5069
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5071
    return-object v1
.end method

.method public static c(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5178
    invoke-static {}, Lcom/dexcom/a/a/a;->h()I

    move-result v0

    .line 5179
    invoke-static {}, Lcom/dexcom/a/a/a;->i()I

    move-result v1

    .line 5180
    packed-switch p0, :pswitch_data_0

    .line 5185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5182
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 5180
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static d()Landroid/util/DisplayMetrics;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5076
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 5077
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5078
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 5081
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 5082
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5083
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 5096
    :goto_0
    return-object v0

    .line 5084
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 5086
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5087
    const-class v2, Landroid/view/Display;

    const-string v3, "getRealMetrics"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5088
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5093
    :cond_1
    invoke-static {}, Lcom/dexcom/a/a/a;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()F
    .locals 1

    .prologue
    .line 5103
    invoke-static {}, Lcom/dexcom/a/a/a;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5104
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 5124
    invoke-static {}, Lcom/dexcom/a/a/a;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 39
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 65
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    new-instance v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 50
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 5128
    invoke-static {}, Lcom/dexcom/a/a/a;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getShortenedDayOfWeek$3469b3db(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/dexcom/a/a/b;->a:[I

    add-int/lit8 v2, p0, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :pswitch_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 84
    :pswitch_1
    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 88
    :pswitch_3
    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 90
    :pswitch_4
    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 92
    :pswitch_5
    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 94
    :pswitch_6
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 5143
    invoke-static {}, Lcom/dexcom/a/a/a;->f()I

    move-result v0

    invoke-static {v0}, Lcom/dexcom/a/a/a;->a(I)I

    move-result v0

    return v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 5147
    invoke-static {}, Lcom/dexcom/a/a/a;->g()I

    move-result v0

    invoke-static {v0}, Lcom/dexcom/a/a/a;->a(I)I

    move-result v0

    return v0
.end method

.method public static j()I
    .locals 3

    .prologue
    .line 5152
    invoke-static {}, Lcom/dexcom/a/a/a;->b()Landroid/graphics/Point;

    move-result-object v0

    .line 5154
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_0

    .line 5155
    const/4 v0, 0x3

    .line 5163
    :goto_0
    return v0

    .line 5157
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_1

    .line 5158
    const/4 v0, 0x1

    goto :goto_0

    .line 5160
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static k()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5170
    invoke-static {}, Lcom/dexcom/a/a/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/a/a/a;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/dexcom/a/a/a;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/a;->checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;

    move-result-object v0

    return-object v0
.end method

.method public disableAppCompatibility()V
    .locals 1

    .prologue
    .line 4057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/a/a/a;->m_disableAppCompatibility:Z

    .line 4058
    return-void
.end method

.method public getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/dexcom/a/a/a;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/appcompatability/webservice/a;->getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;

    move-result-object v0

    return-object v0
.end method

.method public getMessageResult()Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/dexcom/a/a/a;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    return-object v0
.end method

.method public getValidity()Lcom/dexcom/cgm/model/ValidityResult;
    .locals 2

    .prologue
    .line 2063
    iget-boolean v0, p0, Lcom/dexcom/a/a/a;->m_disableAppCompatibility:Z

    if-eqz v0, :cond_0

    .line 2068
    new-instance v0, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    .line 2069
    const-string v1, "ValidEnvironment"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    .line 2073
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/a/a/a;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    goto :goto_0
.end method

.method public isAppInvalid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2085
    iget-object v1, p0, Lcom/dexcom/a/a/a;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    if-nez v1, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return v0

    .line 2087
    :cond_1
    iget-object v1, p0, Lcom/dexcom/a/a/a;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/dexcom/a/a/a;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InvalidUnsupportedEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAppCompatabilityServerIO(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/a;)V
    .locals 2

    new-instance v0, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    const-string v1, "ValidEnvironment"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/a/a/a;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    if-eqz p3, :cond_0

    .line 1050
    invoke-interface {p3}, Lcom/dexcom/cgm/appcompatability/a;->serverCallFinished()V

    .line 1051
    :cond_0
    return-void
.end method

.method public setWebservice(Lcom/dexcom/cgm/appcompatability/webservice/a;)V
    .locals 0

    .prologue
    .line 4036
    iput-object p1, p0, Lcom/dexcom/a/a/a;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    .line 4037
    return-void
.end method
