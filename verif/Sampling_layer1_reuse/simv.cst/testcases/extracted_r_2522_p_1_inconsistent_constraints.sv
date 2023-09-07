class c_2522_1;
    integer i = -419;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2522_1;
    c_2522_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zxxz1zx1z10xxx1x1x100zz1110x1xzzxzxzxxxxxxzxzxzxzxxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
