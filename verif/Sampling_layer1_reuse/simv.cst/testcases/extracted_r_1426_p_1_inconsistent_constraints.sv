class c_1426_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1426_1;
    c_1426_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0zzz0zxz1xz0xxx10zz1xx1100x00xzzzzxxxxxxzzxxzxzxxzxxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
