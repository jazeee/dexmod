.class Lcom/google/android/gms/internal/zzaat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzm$zza;


# instance fields
.field final synthetic zzaBY:Lcom/google/android/gms/internal/zzaat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaat$1;->zzaBY:Lcom/google/android/gms/internal/zzaat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaat$1;->zzaBY:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaat;->isConnected()Z

    move-result v0

    return v0
.end method

.method public zzuC()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
