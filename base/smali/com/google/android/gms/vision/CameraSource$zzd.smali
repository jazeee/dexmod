.class Lcom/google/android/gms/vision/CameraSource$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private zzbOg:Lcom/google/android/gms/vision/CameraSource$ShutterCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/vision/CameraSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/CameraSource$zzd;-><init>(Lcom/google/android/gms/vision/CameraSource;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource$zzd;Lcom/google/android/gms/vision/CameraSource$ShutterCallback;)Lcom/google/android/gms/vision/CameraSource$ShutterCallback;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource$zzd;->zzbOg:Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    return-object p1
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$zzd;->zzbOg:Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$zzd;->zzbOg:Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    invoke-interface {v0}, Lcom/google/android/gms/vision/CameraSource$ShutterCallback;->onShutter()V

    :cond_0
    return-void
.end method
