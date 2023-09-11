class c_3067_1;
    integer i = -510;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3067_1;
    c_3067_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx01zz101z10zxxz0xzx1xzzx000xx0zxzxzzxxzxxxzzzzzzzxxzxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
