class c_702_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_702_1;
    c_702_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1z1zxz1zzz10xzz10010z1xzz0xz1xxzzxzxxzxxzxzxzzzxxzzxzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
