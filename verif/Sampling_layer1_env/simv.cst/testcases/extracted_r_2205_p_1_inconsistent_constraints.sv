class c_2205_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2205_1;
    c_2205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z00zxz00z1x0z1zxxx10z1x1xzz0zzxxzxzxzxxxzxzxxzzxxxzzzzxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
