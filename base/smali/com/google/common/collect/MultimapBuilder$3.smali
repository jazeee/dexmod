.class final Lcom/google/common/collect/MultimapBuilder$3;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
        "<TK0;>;"
    }
.end annotation


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method final createMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
