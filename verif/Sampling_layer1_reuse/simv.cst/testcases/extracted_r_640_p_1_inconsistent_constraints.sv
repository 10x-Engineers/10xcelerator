class c_640_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_640_1;
    c_640_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xz1zz0z0zxz0zx101z10xz1xx0xzxzzzzzxxxzxzzxzxxzxzxzzzzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
