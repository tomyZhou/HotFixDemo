.class public Lcom/deepshare/hotfixdemo/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private tv_hello:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/deepshare/hotfixdemo/MainActivity;->setContentView(I)V

    .line 15
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/deepshare/hotfixdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepshare/hotfixdemo/MainActivity;->tv_hello:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Lcom/deepshare/hotfixdemo/MainActivity;->setContent()V

    .line 18
    return-void
.end method

.method public setContent()V
    .locals 2
    .annotation runtime Lcom/taobao/sophix/core/dex/hot/MethodReplace;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/deepshare/hotfixdemo/MainActivity;->tv_hello:Landroid/widget/TextView;

    const-string v1, "\u6211\u7d2f\u4e2a\u64e6\uff0c\u8865\u4e01\u8865\u4e01\u5566\u5566\u5566~"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
