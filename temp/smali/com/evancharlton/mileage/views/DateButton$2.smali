.class Lcom/evancharlton/mileage/views/DateButton$2;
.super Ljava/lang/Object;
.source "DateButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/views/DateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/views/DateButton;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/views/DateButton;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/evancharlton/mileage/views/DateButton$2;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DateButton$2;->this$0:Lcom/evancharlton/mileage/views/DateButton;

    invoke-static {v0}, Lcom/evancharlton/mileage/views/DateButton;->access$200(Lcom/evancharlton/mileage/views/DateButton;)V

    .line 43
    return-void
.end method
