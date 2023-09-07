class c_1999_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1999_1;
    c_1999_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11001zz10xx11011zzzx101zz01x1z1xzzxxxzxxxzxxzzxzxxxxxzxxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
