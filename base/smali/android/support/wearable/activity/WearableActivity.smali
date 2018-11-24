.class public abstract Landroid/support/wearable/activity/WearableActivity;
.super Landroid/app/Activity;
.source "WearableActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final EXTRA_BURN_IN_PROTECTION:Ljava/lang/String; = "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

.field public static final EXTRA_LOWBIT_AMBIENT:Ljava/lang/String; = "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

.field private static final WEARABLE_CONTROLLER_CLASS_NAME:Ljava/lang/String; = "com.google.android.wearable.compat.WearableActivityController"

.field private static volatile sAmbientCallbacksVerifiedPresent:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSuperCalled:Z

.field private mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->TAG:Ljava/lang/String;

    .line 196
    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/activity/WearableActivity;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/wearable/activity/WearableActivity;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    return p1
.end method

.method private initAmbientSupport()V
    .locals 4

    .prologue
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    :try_start_0
    const-string v0, "com.google.android.wearable.compat.WearableActivityController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    new-instance v0, Lcom/google/android/wearable/compat/WearableActivityController;

    iget-object v1, p0, Landroid/support/wearable/activity/WearableActivity;->TAG:Ljava/lang/String;

    new-instance v2, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;-><init>(Landroid/support/wearable/activity/WearableActivity;Landroid/support/wearable/activity/WearableActivity$1;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/wearable/compat/WearableActivityController;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;)V

    iput-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    .line 172
    invoke-static {}, Landroid/support/wearable/activity/WearableActivity;->verifyAmbientCallbacksPresent()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find wearable shared library classes. Please add <uses-library android:name=\"com.google.android.wearable\" android:required=\"false\" /> to the application manifest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyAmbientCallbacksPresent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 176
    sget-boolean v0, Landroid/support/wearable/activity/WearableActivity;->sAmbientCallbacksVerifiedPresent:Z

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    const-class v0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;

    const-string v1, "onEnterAmbient"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    const-string v1, ".onEnterAmbient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find a required method for ambient support, likely due to proguard optimization. Please add com.google.android.wearable:wearable jar to the list of library jars for your project"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    sput-boolean v5, Landroid/support/wearable/activity/WearableActivity;->sAmbientCallbacksVerifiedPresent:Z

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/wearable/compat/WearableActivityController;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public final isAmbient()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->isAmbient()Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Landroid/support/wearable/activity/WearableActivity;->initAmbientSupport()V

    .line 67
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onCreate()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onDestroy()V

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    .line 139
    return-void
.end method

.method public onExitAmbient()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onPause()V

    .line 85
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onResume()V

    .line 78
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onStop()V

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 94
    return-void
.end method

.method public onUpdateAmbient()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final setAmbientEnabled()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientEnabled()V

    .line 112
    :cond_0
    return-void
.end method
