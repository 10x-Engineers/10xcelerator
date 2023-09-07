class c_2865_1;
    integer i = -476;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2865_1;
    c_2865_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z10z1x00xz01zz0z011xx1zxz0010xzzxzzzzxzxxxzzzxxxzzzxzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
