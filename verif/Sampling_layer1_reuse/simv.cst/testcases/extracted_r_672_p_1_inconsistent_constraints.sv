class c_672_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_672_1;
    c_672_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0z0x1xzz1x0zx0x10z01x1z10x11xzzzzzxzxzxxxzxzzzxxxxzzzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
