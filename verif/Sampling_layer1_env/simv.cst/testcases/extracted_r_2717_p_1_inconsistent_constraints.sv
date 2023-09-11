class c_2717_1;
    integer i = -451;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2717_1;
    c_2717_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz101x1zzz1111xzxx1xx1x111xz01xxzzzzxzzzxxzzzzxzxxzzxxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
