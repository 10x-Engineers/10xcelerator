class c_1366_1;
    integer i = -226;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1366_1;
    c_1366_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zz00xx11x1001xzx1x0z010x1x001zzzxxzxzxxzxzzzxzzzxxxzxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
