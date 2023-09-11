class c_2325_1;
    integer i = -386;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2325_1;
    c_2325_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx00xz10z0zz11z1zx1z1xx0zx100zzzzxzxxxzxxzxxzxzzxzxzxxzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
