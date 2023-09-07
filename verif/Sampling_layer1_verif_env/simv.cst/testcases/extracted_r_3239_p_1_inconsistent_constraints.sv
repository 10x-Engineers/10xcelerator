class c_3239_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3239_1;
    c_3239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx11zzx0zz1x0zx1xxzx100x1zx10zzzxxxzzxxzxzzzxzzzzzzzzzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
