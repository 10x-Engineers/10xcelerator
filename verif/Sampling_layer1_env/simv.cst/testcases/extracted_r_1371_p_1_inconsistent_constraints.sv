class c_1371_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1371_1;
    c_1371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00x1x1z0xzz1xxzz0xxxzzxzzx11x1xzxzzxzzxxxxxzzzzxxzzzzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
