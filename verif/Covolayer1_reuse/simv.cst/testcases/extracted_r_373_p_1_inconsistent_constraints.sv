class c_373_1;
    integer i = -371;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_373_1;
    c_373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00x0zxz11z01x0z100z1zx1xz10xxxxzxzxzxxxzxxzxzzzxxxxzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
