class c_464_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_464_1;
    c_464_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1zzzx11xxzzxzz110zxz10011000xzzxzzxzzxxxxzxxzzxzxxzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
