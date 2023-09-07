class c_288_1;
    integer i = -46;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_288_1;
    c_288_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz10x001x11z10xz1zx1z0xz01x1zxzxzzxzzxzzzxzxxxxxzzxxxzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
