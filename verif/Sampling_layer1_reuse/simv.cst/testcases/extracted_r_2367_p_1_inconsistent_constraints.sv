class c_2367_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2367_1;
    c_2367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010zzzx00z010zz0z00z0zx0zzxzzzzxzxzxzxzzxzzxxxzxzxxxzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
