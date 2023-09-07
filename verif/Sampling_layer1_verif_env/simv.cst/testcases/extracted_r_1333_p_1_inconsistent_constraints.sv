class c_1333_1;
    integer i = -221;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1333_1;
    c_1333_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz0010100xz1zxz01xzzz10xxzx11xzxxzxxxxxxxzzxzxzzzxxxzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
