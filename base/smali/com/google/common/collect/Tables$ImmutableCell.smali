.class final Lcom/google/common/collect/Tables$ImmutableCell;
.super Lcom/google/common/collect/Tables$AbstractCell;
.source "Tables.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Tables$AbstractCell",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final columnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/common/collect/Tables$ImmutableCell;->rowKey:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcom/google/common/collect/Tables$ImmutableCell;->columnKey:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/google/common/collect/Tables$ImmutableCell;->value:Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public final getColumnKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->columnKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRowKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->rowKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/collect/Tables$ImmutableCell;->value:Ljava/lang/Object;

    return-object v0
.end method
