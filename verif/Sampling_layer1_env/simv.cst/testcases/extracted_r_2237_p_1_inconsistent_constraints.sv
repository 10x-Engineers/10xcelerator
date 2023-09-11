class c_2237_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2237_1;
    c_2237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10zz111xx11xxx1x0xx0z1zx110xzzzxxzzxxzxxxzzxzxxxxxxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
