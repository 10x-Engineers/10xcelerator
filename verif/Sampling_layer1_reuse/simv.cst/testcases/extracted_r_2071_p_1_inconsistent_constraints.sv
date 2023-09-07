class c_2071_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2071_1;
    c_2071_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x011z10xx0xz0z0x10xz1xx101010zxzzzzxxzxzzzzzzzzzxzxxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
