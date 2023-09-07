class c_715_1;
    integer i = -118;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_715_1;
    c_715_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101zxz1xx11zzxxz00z0xx1xz1x0z1xzxxzxxzxxxzxzzzzzzzzzxzzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
