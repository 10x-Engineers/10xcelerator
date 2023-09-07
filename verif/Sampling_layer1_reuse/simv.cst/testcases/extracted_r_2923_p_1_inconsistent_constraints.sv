class c_2923_1;
    integer i = -486;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2923_1;
    c_2923_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zx010xzz01zxzzx10zz1001zzxz1xzxzxzzxxzxzxzzxzxxxzzxzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
