.class Lcom/google/android/gms/vision/CameraSource$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic zzbOb:Lcom/google/android/gms/vision/CameraSource;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/vision/CameraSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource$zza;->zzbOb:Lcom/google/android/gms/vision/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/CameraSource$zza;-><init>(Lcom/google/android/gms/vision/CameraSource;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$zza;->zzbOb:Lcom/google/android/gms/vision/CameraSource;

    invoke-static {v0}, Lcom/google/android/gms/vision/CameraSource;->zzc(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/vision/CameraSource$zzb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/vision/CameraSource$zzb;->zza([BLandroid/hardware/Camera;)V

    return-void
.end method
