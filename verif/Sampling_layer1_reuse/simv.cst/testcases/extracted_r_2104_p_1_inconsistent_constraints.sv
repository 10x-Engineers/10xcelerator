class c_2104_1;
    integer i = -349;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2104_1;
    c_2104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx101xxzz1xz10xzz00z1zx0zx01zx0zxzzxxzxxxzxxxxxxzxxxzxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
