class c_2975_1;
    integer i = -494;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2975_1;
    c_2975_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xxxzzxx1z00zzz00zz00z00zzxz0zzxxxxzzxxzxxxxxxzzxzzxxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
