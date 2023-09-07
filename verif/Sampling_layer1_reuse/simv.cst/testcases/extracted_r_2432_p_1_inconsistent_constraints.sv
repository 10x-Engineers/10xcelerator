class c_2432_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2432_1;
    c_2432_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x101xz01x1zzxx1111x10110zxzxz1xxzxxxxzxzxzxxxxzzzzxxxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
