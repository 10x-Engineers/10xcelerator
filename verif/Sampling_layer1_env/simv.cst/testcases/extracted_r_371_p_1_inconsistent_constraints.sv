class c_371_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_371_1;
    c_371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0x0xzzx00x1x111z11xz00110011zzzzxxxxzxzxxzzzxxzxzxxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
