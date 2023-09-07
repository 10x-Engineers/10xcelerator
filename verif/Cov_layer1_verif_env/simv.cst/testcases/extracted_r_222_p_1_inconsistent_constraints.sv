class c_222_1;
    integer i = -220;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_222_1;
    c_222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx01xx11xxx1x010xxx1z1z0z1011xxzzxxxzzzxxzzxxxxxxzxzzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
