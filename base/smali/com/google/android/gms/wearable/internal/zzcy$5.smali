.class final Lcom/google/android/gms/wearable/internal/zzcy$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc",
        "<",
        "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbTv:Lcom/google/android/gms/wearable/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcy$5;->zzbTv:Lcom/google/android/gms/wearable/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy$5;->zzbTv:Lcom/google/android/gms/wearable/internal/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/internal/zzs;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method

.method public final synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcy$5;->zzb(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method

.method public final zzwc()V
    .locals 0

    return-void
.end method
