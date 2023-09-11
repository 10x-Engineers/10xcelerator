class c_469_1;
    integer i = -467;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_469_1;
    c_469_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00001x1z1001zx110x010xz1zx1zxxxzzxxxzzzzzxzxxzxxzzxzxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
