.class final Lcom/dexcom/cgm/activities/CustomViewUtil$3;
.super Ljava/lang/Object;
.source "CustomViewUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Ljava/lang/reflect/Method;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handlerName:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$handlerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->mHandler:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$handlerName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->mHandler:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->mHandler:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$view:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$handlerName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/CustomViewUtil;->setupDebounce(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find a method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$handlerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(View) in the activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$context:Landroid/content/Context;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for onClick handler on view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;->val$view:Landroid/view/View;

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute non public method of the activity"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_2
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute method of the activity"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
