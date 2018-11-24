.class final Landroid/support/wearable/view/ProgressSpinner$1;
.super Landroid/util/Property;
.source "ProgressSpinner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/wearable/view/ProgressSpinner;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Landroid/support/wearable/view/ProgressSpinner;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Landroid/support/wearable/view/ProgressSpinner;->access$100(Landroid/support/wearable/view/ProgressSpinner;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Landroid/support/wearable/view/ProgressSpinner;

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ProgressSpinner$1;->get(Landroid/support/wearable/view/ProgressSpinner;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final set(Landroid/support/wearable/view/ProgressSpinner;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/wearable/view/ProgressSpinner;->access$000(Landroid/support/wearable/view/ProgressSpinner;F)V

    .line 57
    return-void
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Landroid/support/wearable/view/ProgressSpinner;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/ProgressSpinner$1;->set(Landroid/support/wearable/view/ProgressSpinner;Ljava/lang/Float;)V

    return-void
.end method
