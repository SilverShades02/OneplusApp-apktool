.class public Lcom/a/a/e/d/i;
.super Ljava/lang/Object;
.source "MappingFastJsonValue.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/a/a/e/d/i;->a:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/e/d/i;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/a/a/e/d/i;->a:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/a/a/e/d/i;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/a/a/e/d/i;->b:Ljava/lang/String;

    return-object v0
.end method
