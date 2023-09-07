class c_2769_1;
    integer i = -460;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2769_1;
    c_2769_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz00101z00x0zz1xxxz10xz1z1x01xzzzxzxzzzzzxxxxxzzzzzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
